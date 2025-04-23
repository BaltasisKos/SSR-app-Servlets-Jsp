<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            600: '#2563eb',
                            700: '#1d4ed8',
                        }
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">
    <%@ include file="header.jsp"%>

 <main class="flex">
      <div>
        <div class="w-64 bg-primary-800 text-white p-4 min-h-screen">
          <!-- Arxikh -->
          <div class="flex items-center mb-7" style="cursor: pointer;">
            <i class="fa-sharp fa-solid fa-house ml-4"></i>
            <h2 class="py-2 pl-2">Αρχική</h2>

          </div>
            <!-- Teacher Dropdown -->
            <!-- Teacher Button -->
          <button data-collapse-toggle="navbar-hamburger" type="button" class="w-full text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 mb-3 flex items-center justify-between" aria-controls="navbar-hamburger" aria-expanded="false">
            Καθηγητές
          <svg class="w-2.5 h-2.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
           <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
           </svg>
          </button>

          <!-- Teacher Dropdown Menu -->
        <div id="navbar-hamburger" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow-sm mb-2">
          <ul class="py-2 text-sm text-gray-700 dark:text-gray-800">
           <c:if test="${sessionScope.role == 'ADMIN'}">
            <li><a href="${pageContext.request.contextPath}/school-app/teachers/view" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-blue-600 dark:hover:text-white text-center mb-2"  style="border-bottom: solid 0.5px;">Προβολή</a></li>
              <li><a href="${pageContext.request.contextPath}/school-app/teachers/insert" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-blue-600 dark:hover:text-white text-center ">Εισαγωγή</a></li>
               </c:if>
          </ul>
        </div>

          <!-- Student Button (Same structure as Teacher Button) -->
        <button data-collapse-toggle="navbar-hamburger1" type="button" class="w-full text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 mb-3 flex items-center justify-between" aria-controls="navbar-hamburger" aria-expanded="false">
            Μαθητές
          <svg class="w-2.5 h-2.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
           <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
           </svg>
          </button>

          <!-- Teacher Dropdown Menu -->
        <div id="navbar-hamburger1" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow-sm mb-2">
          <ul class="py-2 text-sm text-gray-700 dark:text-gray-800">
            <li><a href="${pageContext.request.contextPath}/school-app/students/view" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-blue-600 dark:hover:text-white text-center mb-2"  style="border-bottom: solid 0.5px;">Προβολή</a></li>
              <li><a href="${pageContext.request.contextPath}/school-app/students/insert" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-blue-600 dark:hover:text-white text-center ">Εισαγωγή</a></li>
          </ul>
        </div>

        </div>
      </div>

        <div class="p-4 mx-auto bg-blue-300 max-w md:p-6">
            <div class="grid grid-cols-12 gap-4 md:gap-6">
                <div class="col-span-12 space-y-6 xl-col-span-7">
                    <!-- metric group one -->
                     <div class="grid grid-cols-2 gap-4 sm-grid-cols-2 md:gap-6">
                        <div class="rounded-2xl border bg-white border-grey-200 p-5 dark:border-gray-800 md:p-6">
                            <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-gray-200 dark:bg-gray-8">
                                <svg fill="#000000" height="120px" width="25px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                viewBox="0 0 511.999 511.999" xml:space="preserve" transform="matrix(-1, 0, 0, 1, 0, 0)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier"
                                 stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M302.195,11.833H13.049C5.842,11.833,0,17.675,0,24.882v214.289c0,7.207,5.842,13.049,13.049,13.049h283.839 l-34.352-21.329c-2.247-1.396-4.282-3.002-6.109-4.768H26.097V37.93h263.049v126.703c4.01,0.847,7.943,2.39,11.625,4.677 l14.473,8.986V24.882C315.244,17.675,309.402,11.833,302.195,11.833z"></path> </g> </g> <g> <g> <path d="M216.857,134.337c-4.352-3.43-10.665-2.685-14.097,1.668c-3.432,4.353-2.686,10.665,1.668,14.097l44.279,34.914 c0.63-1.371,1.34-2.719,2.156-4.034c2.883-4.643,6.649-8.401,10.94-11.206L216.857,134.337z"></path> </g> </g> <g> <g> <circle cx="419.71" cy="81.405" r="37.557"></circle> </g> </g> <g> <g> <path d="M511.33,173.609c-0.118-23.528-19.355-42.67-42.884-42.67H450.26c-17.831,46.242-11.329,29.381-22.507,58.37l4.709-23.724 c0.346-1.744,0.067-3.555-0.79-5.113l-7.381-13.424l6.551-11.914c0.454-0.826,0.438-1.829-0.041-2.64 c-0.479-0.811-1.352-1.308-2.293-1.308h-17.96c-0.942,0-1.813,0.497-2.293,1.308s-0.495,1.815-0.041,2.64l6.537,11.889 l-7.367,13.4c-0.873,1.589-1.147,3.438-0.77,5.211l5.438,23.675c-3.119-8.087-21.08-52.728-23.255-58.37h-17.83 c-23.529,0-42.766,19.141-42.884,42.67c-0.098,19.565-0.016,3.179-0.17,33.884l-36.702-22.787 c-8.501-5.28-19.674-2.667-24.953,5.836c-5.279,8.503-2.666,19.675,5.836,24.954l64.219,39.873 c12.028,7.47,27.609-1.167,27.68-15.304c0.036-7.091,0.292-57.809,0.334-66.275c0.013-2.092,1.714-3.776,3.805-3.769 c2.089,0.007,3.779,1.703,3.779,3.794c-0.018,87.323-0.394,111.735-0.394,304.606c0,12.01,9.736,21.746,21.746,21.746 s21.746-9.736,21.746-21.746V304.604h9.388v173.817c0,12.01,9.736,21.746,21.746,21.746s21.746-9.736,21.746-21.746l0.008-304.612 c0-1.981,1.604-3.589,3.586-3.595c1.981-0.006,3.595,1.594,3.605,3.577l0.669,133.132c0.05,9.977,8.154,18.03,18.119,18.03 c0.031,0,0.062,0,0.094,0c10.007-0.05,18.081-8.205,18.03-18.212L511.33,173.609z">
                                 </path> </g> </g> </g></svg>
                            </div>
                            <div class="mt-5 flex items-end justify-between">
                                <div>
                                  <span class="text-sm text-white dark:text-gray-600">Καθηγητές</span>

                                </div>

                                <span class="flex items-center gap-1 rounded-full bg-success-50 py-0.5 pl-2 pr-2.5 text-sm font-medium text-light-grey dark:bg-success-500/15 dark:text-success-500">
                                  37
                                </span>
                              </div>
                        </div>
                        <!-- metric 2 -->
                        <div class="rounded-2xl border border-gray-200 bg-white p-5 dark:border-gray-800  md:p-6">
                            <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-gray-100 dark:bg-gray-200">
                                <svg fill="#000000" width="25px" height="25px" viewBox="0 0 256.00 256.00" id="Flat" xmlns="http://www.w3.org/2000/svg" stroke="#000000" stroke-width="4.352"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M225.26514,60.20508l-96-32a4.00487,4.00487,0,0,0-2.53028,0l-96,32c-.05713.019-.10815.04809-.16406.06958-.08545.033-.16821.06811-.251.10644a4.04126,4.04126,0,0,0-.415.22535c-.06714.04174-.13575.08007-.20044.12548a3.99,3.99,0,0,0-.47632.39307c-.02027.01953-.0437.0354-.06348.05542a3.97787,3.97787,0,0,0-.44556.53979c-.04077.0586-.07373.12183-.11132.18262a3.99741,3.99741,0,0,0-.23487.43262c-.03613.07837-.06811.15771-.09912.23852a3.96217,3.96217,0,0,0-.144.46412c-.01929.07714-.04126.15234-.05591.2312A3.98077,3.98077,0,0,0,28,64v80a4,4,0,0,0,8,0V69.55005l43.87524,14.625A59.981,59.981,0,0,0,104.272,175.09814a91.80574,91.80574,0,0,0-53.39062,38.71631,3.99985,3.99985,0,1,0,6.70117,4.36914,84.02266,84.02266,0,0,1,140.83447,0,3.99985,3.99985,0,1,0,6.70117-4.36914A91.80619,91.80619,0,0,0,151.728,175.09814a59.981,59.981,0,0,0,24.39673-90.92309l49.14038-16.38013a4.00037,4.00037,0,0,0,0-7.58984ZM180,120A52,52,0,1,1,87.92993,86.85986l38.80493,12.93506a4.00487,4.00487,0,0,0,2.53028,0l38.80493-12.93506A51.85133,51.85133,0,0,1,180,120ZM168.00659,78.44775l-.01294.0044L128,91.7832,44.64893,64,128,36.2168,211.35107,64Z"></path> </g></svg>
                            </div>

                            <div class="mt-5 flex items-end justify-between">
                              <div>
                                <span class="text-sm text-white dark:text-gray-600">Μαθητές</span>

                              </div>

                              <span class="flex items-center gap-1 rounded-full bg-error-50 py-0.5 pl-2 pr-2.5 text-sm font-medium text-error-600 dark:bg-error-500/15 dark:text-error-500">
                                15
                              </span>
                            </div>
                          </div>
                     </div>
                     <div class="overflow-hidden rounded-2xl border border-gray-600 bg-gray-300 px-5 pt-5 sm:px-6 sm:pt-6 dark:border-gray-800">

      <div class="col-span-12 xl:col-span-5">
      <!-- ====== Chart Two Start -->

    <!-- ====== Chart Two End -->
    <div class="col-span-12">
    <!-- ====== Chart Three Start -->
    <div class="rounded-2xl border border-gray-200 bg-white px-5 pb-5 pt-5 dark:border-gray-800 sm:px-6 sm:pt-6">
  <div class="flex flex-col gap-5 mb-6 sm:flex-row sm:justify-between">
    <div class="w-full">
      <p class="text-lg font-semibold text-gray-800 ">
        Στατιστικά
      </p>
      <p class="mt-1 text-gray-500 text-theme-sm dark:text-gray-400">
        Εγγραφές με βάση τον μήνα
      </p>
    </div>

    <div class="flex items-start w-full gap-3 sm:justify-end">
      <div x-data="{selected: 'overview'}" class="inline-flex w-fit items-center gap-0.5 rounded-lg bg-gray-100 p-0.5 ">
        <button @click="selected = 'overview'" :class="selected === 'overview' ? 'shadow-theme-xs text-gray-900 dark:text-white''text-gray-500 dark:text-gray-400'" class="px-3 py-2 font-medium rounded-md text-theme-sm hover:text-gray-900 dark:hover:text-white shadow-theme-xs text-gray-900 dark:text-white bg-primary-600 ">
          Overview
        </button>
      </div>

      </div>
    </div>
  </div>
  <div class="max-w-full overflow-x-auto custom-scrollbar">
    <div id="chartThree" class="-ml-4 min-w-[700px] pl-2 xl:min-w-full" style="min-height: 325px;"><div id="apexchartsfw54bahz" class="apexcharts-canvas apexchartsfw54bahz apexcharts-theme-" style="width: 1446px; height: 310px;"><svg id="SvgjsSvg1253" width="1446" height="310" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)"><foreignObject x="0" y="0" width="1446" height="310"><div xmlns="http://www.w3.org/1999/xhtml" style="position: relative; height: 100%; width: 100%;"><div class="apexcharts-legend" style="max-height: 155px;"></div></div></foreignObject><rect id="SvgjsRect1258" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1263" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g id="SvgjsG1264" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g id="SvgjsG1336" class="apexcharts-yaxis" rel="0" transform="translate(16.125, 0)"><g id="SvgjsG1337" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1339" font-family="Outfit, sans-serif" x="20" y="33.666666666666664" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1340">50</tspan><title>250</title></text><text id="SvgjsText1342" font-family="Outfit, sans-serif" x="20" y="81.81266666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1343">40</tspan><title>200</title></text><text id="SvgjsText1345" font-family="Outfit, sans-serif" x="20" y="129.95866666666666" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1346">30</tspan><title>150</title></text><text id="SvgjsText1348" font-family="Outfit, sans-serif" x="20" y="178.10466666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1349">20</tspan><title>100</title></text><text id="SvgjsText1351" font-family="Outfit, sans-serif" x="20" y="226.2506666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1352">10</tspan><title>50</title></text><text id="SvgjsText1354" font-family="Outfit, sans-serif" x="20" y="274.3966666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1355">0</tspan><title>0</title></text></g></g><g id="SvgjsG1255" class="apexcharts-inner apexcharts-graphical" transform="translate(46.125, 30)"><defs id="SvgjsDefs1254"><clipPath id="gridRectMaskfw54bahz"><rect id="SvgjsRect1260" width="1378.219009399414" height="240.73000000000002" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectBarMaskfw54bahz"><rect id="SvgjsRect1261" width="1384.219009399414" height="246.73000000000002" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskfw54bahz"><rect id="SvgjsRect1262" width="1378.219009399414" height="240.73000000000002" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskfw54bahz"></clipPath><clipPath id="nonForecastMaskfw54bahz"></clipPath><linearGradient id="SvgjsLinearGradient1269" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1270" stop-opacity="0.55" stop-color="rgba(70,95,255,0.55)" offset="0"></stop><stop id="SvgjsStop1271" stop-opacity="0" stop-color="rgba(163,175,255,0)" offset="1"></stop><stop id="SvgjsStop1272" stop-opacity="0" stop-color="rgba(163,175,255,0)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient1278" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1279" stop-opacity="0.55" stop-color="rgba(156,185,255,0.55)" offset="0"></stop><stop id="SvgjsStop1280" stop-opacity="0" stop-color="rgba(206,220,255,0)" offset="1"></stop><stop id="SvgjsStop1281" stop-opacity="0" stop-color="rgba(206,220,255,0)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine1259" x1="625.9631860906427" y1="0" x2="625.9631860906427" y2="240.73000000000002" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="625.9631860906427" y="0" width="1" height="240.73000000000002" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG1284" class="apexcharts-grid"><g id="SvgjsG1285" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine1289" x1="0" y1="48.146" x2="1378.219009399414" y2="48.146" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1290" x1="0" y1="96.292" x2="1378.219009399414" y2="96.292" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1291" x1="0" y1="144.438" x2="1378.219009399414" y2="144.438" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1292" x1="0" y1="192.584" x2="1378.219009399414" y2="192.584" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1286" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine1295" x1="0" y1="240.73000000000002" x2="1378.219009399414" y2="240.73000000000002" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1294" x1="0" y1="1" x2="0" y2="240.73000000000002" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1287" class="apexcharts-grid-borders"><line id="SvgjsLine1288" x1="0" y1="0" x2="1378.219009399414" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1293" x1="0" y1="240.73000000000002" x2="1378.219009399414" y2="240.73000000000002" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1265" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG1266" class="apexcharts-series" zIndex="0" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1273" d="M0 67.40439999999998L125.29263721812855 57.775199999999984L250.5852744362571 77.03359999999998L375.8779116543856 86.6628L501.1705488725142 72.219L626.4631860906427 81.84819999999999L751.7558233087713 77.03359999999998L877.0484605268998 43.331399999999974L1002.3410977450284 19.258399999999995L1127.633734963157 38.51679999999999L1252.9263721812854 9.629199999999969L1378.219009399414 14.443799999999982L1378.219009399414 240.73000000000002L0 240.73000000000002L0 67.40439999999998C0 67.40439999999998 0 67.40439999999998 0 67.40439999999998 " fill="url(#SvgjsLinearGradient1269)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskfw54bahz)" pathTo="M 0 67.40439999999998 L 125.29263721812855 57.775199999999984 L 250.5852744362571 77.03359999999998 L 375.8779116543856 86.6628 L 501.1705488725142 72.219 L 626.4631860906427 81.84819999999999 L 751.7558233087713 77.03359999999998 L 877.0484605268998 43.331399999999974 L 1002.3410977450284 19.258399999999995 L 1127.633734963157 38.51679999999999 L 1252.9263721812854 9.629199999999969 L 1378.219009399414 14.443799999999982 L 1378.219009399414 240.73000000000002 L 0 240.73000000000002z" pathFrom="M 0 67.40439999999998 L 125.29263721812855 57.775199999999984 L 250.5852744362571 77.03359999999998 L 375.8779116543856 86.6628 L 501.1705488725142 72.219 L 626.4631860906427 81.84819999999999 L 751.7558233087713 77.03359999999998 L 877.0484605268998 43.331399999999974 L 1002.3410977450284 19.258399999999995 L 1127.633734963157 38.51679999999999 L 1252.9263721812854 9.629199999999969 L 1378.219009399414 14.443799999999982 L 1378.219009399414 240.73000000000002 L 0 240.73000000000002zz"></path><path id="SvgjsPath1274" d="M0 67.40439999999998L125.29263721812855 57.775199999999984L250.5852744362571 77.03359999999998L375.8779116543856 86.6628L501.1705488725142 72.219L626.4631860906427 81.84819999999999L751.7558233087713 77.03359999999998L877.0484605268998 43.331399999999974L1002.3410977450284 19.258399999999995L1127.633734963157 38.51679999999999L1252.9263721812854 9.629199999999969L1378.219009399414 14.443799999999982 " fill="none" fill-opacity="1" stroke="#465fff" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskfw54bahz)" pathTo="M 0 67.40439999999998 L 125.29263721812855 57.775199999999984 L 250.5852744362571 77.03359999999998 L 375.8779116543856 86.6628 L 501.1705488725142 72.219 L 626.4631860906427 81.84819999999999 L 751.7558233087713 77.03359999999998 L 877.0484605268998 43.331399999999974 L 1002.3410977450284 19.258399999999995 L 1127.633734963157 38.51679999999999 L 1252.9263721812854 9.629199999999969 L 1378.219009399414 14.443799999999982" pathFrom="M 0 67.40439999999998 L 125.29263721812855 57.775199999999984 L 250.5852744362571 77.03359999999998 L 375.8779116543856 86.6628 L 501.1705488725142 72.219 L 626.4631860906427 81.84819999999999 L 751.7558233087713 77.03359999999998 L 877.0484605268998 43.331399999999974 L 1002.3410977450284 19.258399999999995 L 1127.633734963157 38.51679999999999 L 1252.9263721812854 9.629199999999969 L 1378.219009399414 14.443799999999982" fill-rule="evenodd"></path><g id="SvgjsG1267" class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="0"><g class="apexcharts-series-markers"><path id="SvgjsPath1359" d="M 626.4631860906427, 0
           m -0, 0
           a 0,0 0 1,0 0,0
           a 0,0 0 1,0 -0,0" fill="#465fff" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="626.4631860906427" cy="0" shape="circle" class="apexcharts-marker wrcg7j2mi no-pointer-events" default-marker-size="0"></path></g></g></g><g id="SvgjsG1275" class="apexcharts-series" zIndex="1" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path id="SvgjsPath1282" d="M0 202.21320000000003L125.29263721812855 211.8424L250.5852744362571 192.584L375.8779116543856 202.21320000000003L501.1705488725142 187.76940000000002L626.4631860906427 202.21320000000003L751.7558233087713 173.3256L877.0484605268998 144.438L1002.3410977450284 134.80880000000002L1127.633734963157 125.1796L1252.9263721812854 96.292L1378.219009399414 105.9212L1378.219009399414 240.73000000000002L0 240.73000000000002L0 202.21320000000003C0 202.21320000000003 0 202.21320000000003 0 202.21320000000003 " fill="url(#SvgjsLinearGradient1278)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskfw54bahz)" pathTo="M 0 202.21320000000003 L 125.29263721812855 211.8424 L 250.5852744362571 192.584 L 375.8779116543856 202.21320000000003 L 501.1705488725142 187.76940000000002 L 626.4631860906427 202.21320000000003 L 751.7558233087713 173.3256 L 877.0484605268998 144.438 L 1002.3410977450284 134.80880000000002 L 1127.633734963157 125.1796 L 1252.9263721812854 96.292 L 1378.219009399414 105.9212 L 1378.219009399414 240.73000000000002 L 0 240.73000000000002z" pathFrom="M 0 202.21320000000003 L 125.29263721812855 211.8424 L 250.5852744362571 192.584 L 375.8779116543856 202.21320000000003 L 501.1705488725142 187.76940000000002 L 626.4631860906427 202.21320000000003 L 751.7558233087713 173.3256 L 877.0484605268998 144.438 L 1002.3410977450284 134.80880000000002 L 1127.633734963157 125.1796 L 1252.9263721812854 96.292 L 1378.219009399414 105.9212 L 1378.219009399414 240.73000000000002 L 0 240.73000000000002zz"></path><path id="SvgjsPath1283" d="M0 202.21320000000003L125.29263721812855 211.8424L250.5852744362571 192.584L375.8779116543856 202.21320000000003L501.1705488725142 187.76940000000002L626.4631860906427 202.21320000000003L751.7558233087713 173.3256L877.0484605268998 144.438L1002.3410977450284 134.80880000000002L1127.633734963157 125.1796L1252.9263721812854 96.292L1378.219009399414 105.9212 " fill="none" fill-opacity="1" stroke="#9cb9ff" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskfw54bahz)" pathTo="M 0 202.21320000000003 L 125.29263721812855 211.8424 L 250.5852744362571 192.584 L 375.8779116543856 202.21320000000003 L 501.1705488725142 187.76940000000002 L 626.4631860906427 202.21320000000003 L 751.7558233087713 173.3256 L 877.0484605268998 144.438 L 1002.3410977450284 134.80880000000002 L 1127.633734963157 125.1796 L 1252.9263721812854 96.292 L 1378.219009399414 105.9212" pathFrom="M 0 202.21320000000003 L 125.29263721812855 211.8424 L 250.5852744362571 192.584 L 375.8779116543856 202.21320000000003 L 501.1705488725142 187.76940000000002 L 626.4631860906427 202.21320000000003 L 751.7558233087713 173.3256 L 877.0484605268998 144.438 L 1002.3410977450284 134.80880000000002 L 1127.633734963157 125.1796 L 1252.9263721812854 96.292 L 1378.219009399414 105.9212" fill-rule="evenodd"></path><g id="SvgjsG1276" class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="1"><g class="apexcharts-series-markers"><path id="SvgjsPath1360" d="M 626.4631860906427, 0
           m -0, 0
           a 0,0 0 1,0 0,0
           a 0,0 0 1,0 -0,0" fill="#9cb9ff" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="626.4631860906427" cy="0" shape="circle" class="apexcharts-marker wqo04kha8 no-pointer-events" default-marker-size="0"></path></g></g></g><g id="SvgjsG1268" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG1277" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine1296" x1="0" y1="0" x2="1378.219009399414" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1297" x1="0" y1="0" x2="1378.219009399414" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1298" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1299" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1301" font-family="Outfit, sans-serif" x="0" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1302">Jan</tspan><title>Jan</title></text><text id="SvgjsText1304" font-family="Outfit, sans-serif" x="125.29263721812853" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1305">Feb</tspan><title>Feb</title></text><text id="SvgjsText1307" font-family="Outfit, sans-serif" x="250.58527443625707" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1308">Mar</tspan><title>Mar</title></text><text id="SvgjsText1310" font-family="Outfit, sans-serif" x="375.8779116543856" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1311">Apr</tspan><title>Apr</title></text><text id="SvgjsText1313" font-family="Outfit, sans-serif" x="501.1705488725142" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1314">May</tspan><title>May</title></text><text id="SvgjsText1316" font-family="Outfit, sans-serif" x="626.4631860906428" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1317">Jun</tspan><title>Jun</title></text><text id="SvgjsText1319" font-family="Outfit, sans-serif" x="751.7558233087714" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1320">Jul</tspan><title>Jul</title></text><text id="SvgjsText1322" font-family="Outfit, sans-serif" x="877.0484605268999" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1323">Aug</tspan><title>Aug</title></text><text id="SvgjsText1325" font-family="Outfit, sans-serif" x="1002.3410977450284" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1326">Sep</tspan><title>Sep</title></text><text id="SvgjsText1328" font-family="Outfit, sans-serif" x="1127.6337349631567" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1329">Oct</tspan><title>Oct</title></text><text id="SvgjsText1331" font-family="Outfit, sans-serif" x="1252.9263721812852" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1332">Nov</tspan><title>Nov</title></text><text id="SvgjsText1334" font-family="Outfit, sans-serif" x="1378.2190093994136" y="268.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Outfit, sans-serif;"><tspan id="SvgjsTspan1335">Dec</tspan><title>Dec</title></text></g></g><g id="SvgjsG1356" class="apexcharts-yaxis-annotations apexcharts-hidden-element-shown"></g><g id="SvgjsG1357" class="apexcharts-xaxis-annotations apexcharts-hidden-element-shown"></g><g id="SvgjsG1358" class="apexcharts-point-annotations apexcharts-hidden-element-shown"></g><rect id="SvgjsRect1361" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1362" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g></svg></div></div></div></div>
  </div>
</div>
<!-- ====== Chart Three End -->
              </div>
        </div>
    </main>
     <%@include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/flowbite@3.1.2/dist/flowbite.min.js"></script>


</body>
</html>
