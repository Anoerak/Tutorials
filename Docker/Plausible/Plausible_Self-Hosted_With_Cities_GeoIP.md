# Plausible - Your Google Analytics Alternative

[Plausible](https://plausible.io) is a lightweight and open-source web analytics tool. It doesn’t use cookies and is fully compliant with
GDPR, CCPA and PECR. You can self-host Plausible or have us run it for you in the Cloud.

![Plausible Analytics](https://plausible.io/images/plausible-analytics.png)

## Features

-   **Simple dashboard**: get a quick overview of your site stats on the dashboard
-   **Real-time updates**: see the number of active users on your site at any given moment
-   **Bounce rate**: see the percentage of people that leave your site after visiting only one page
-   **Top pages**: see which pages of your site are the most popular
-   **Top traffic sources**: see where your visitors are coming from
-   **Content efficiency**: see which pages of your site are the most popular adjusted for the time spent on the page
-   **Goals**: track custom goals on your site (e.g. newsletter signups, purchases, video plays, etc.)
-   **Event tracking**: track custom events on your site (e.g. clicks, downloads, ad impressions, etc.)
-   **A/B testing**: compare the performance of two different versions of the same page
-   **Export data**: export your data to CSV or JSON format
-   **Embeddable charts**: embed charts on your site with a simple code snippet
-   **Dark mode**: switch to dark mode if you prefer dark themes
-   **Custom domain**: use your own domain name to serve the tracking script and the dashboard
-   **Custom timezone**: use your own timezone for the stats in the dashboard
-   **GeoIP location**: see the country, region and city of your visitors
-   **Self-hosted**: host Plausible on your own server or use our managed hosting option
-   **Open source**: Plausible is 100% open source and you can self-host it for free

## Self-hosting installation with Portainer and Cities GeoIP database on Synology NAS

This is the self-hosting installation of Plausible Analytics with Portainer and Cities GeoIP database on a Synology NAS. Since the cities Db
is quite large, it is not included in the Docker image. You'll find the required files in this repository. Please be advised that those
files won't be updated automatically.

## Requirements

-   Docker
-   Docker Compose

## Ports and Reverse Proxy

Plausible uses port 8000 by default. You can change it in the `docker-compose.yml` file.

If you want to use a reverse proxy, you can use the following configuration:

1. Go to `Control Panel` > `Login Portal` > `Advanced` > `Reverse Proxy`
2. Create a new reverse proxy
3. Click on the `General`tab
4. Set the `Source` to as follows:
    - Protocol: `HTTPS`
    - Hostname: `plausible.yourdomain.com` or if using a synology.me domain `plausible.yourdomain.synology.me`
    - Port: `443`
5. Check the `Enable HSTS` box
6. Set the `Destination` to as follows:
    - Protocol: `HTTP`
    - Hostname: `localhost`
    - Port: `9850`
7. Click on the `Custom Headers` tab
8. Add a new header with the following values by clicking on `create`and then on `WebSocket`:
9. Keep the value offered by default and click on `save`

## SMTP / GMAIL configuration for Plausible

If you want to use the SMTP server of your Synology NAS or your GMAIL account, you can modify the `docker-compose.yml` file by uncommenting
and modify the following lines:

```yaml
#       SMTP_HOST_ADDR: smtp.gmail.com
#       SMTP_HOST_PORT: 587
#       SMTP_USER_NAME: Your-own-gmail-address
#       SMTP_USER_PWD: Your-own-app-password
```

If you want to use the SMTP server of your Synology NAS, you can modify the `docker-compose.yml` file by uncommenting and modify the
following lines:

```yaml
#       SMTP_HOST_ADDR: smtp.yourdomain.com
#       SMTP_HOST_PORT: 587
#       SMTP_USER_NAME: Your-own-email-address
#       SMTP_USER_PWD: Your-own-email-password
```

## Installation

(Careful, all file and folder names are case sensitive)

1. Create a folder named `plausible` in the `/docker` folder on your Synology NAS
2. In the `plausible` folder, create a folder named `data`
3. In the `plausible` folder, create a folder named `geoip`
4. In the `plausible` folder, create a folder named `db`
5. In the `plausible` folder, create a folder named `logs`
6. In the `geoip` folder, paste the `geolite2-city.mmdb` file and the `geonames.ssv` file
7. From Portainer, create a new stack named `plausible` and paste the content of the `docker-compose.yml` file
8. Replace the UID and GID values with your own
9. Replace the environment variables for the SMTP server or your GMAIL account with your own values and replace the `BASE_URL` with your own
   `https://plausible.yourdomain.com` or if using a synology.me domain `https://plausible.yourdomain.synology.me`
10. Deploy the stack
11. Go to `https://plausible.yourdomain.com` or if using a synology.me domain `https://plausible.yourdomain.synology.me`
12. Create a new account
13. Go to `Settings` > `Sites` > `Add new site`
14. Enter your domain name and click on `Add site`
15. Copy the tracking code and paste it in the `<head>` section of your website
16. Wait a few minutes and you should see your stats appear in the dashboard

## Updating the stack to remove the registration page

1. Go to Portainer and stop the `plausible` stack
2. Lok for the environment variable `DISABLE_REGISTRATION` and change its value to `true` in order to remove the registration page
3. Update the stack
