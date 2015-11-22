---
title       : WhichUni Web App
author      : Alex Spiers
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github      :
  user      : socialneutrino
  repo      : DevDataProdProject
---

## WhichUni: English and Welsh University Stats Web Application

- WhichUni is a shiny web application that is an interactive visualisation of publicly available information
from HESA (Higher Education Statistics Agency)

- WhichUni allows users to view English and Welsh univerisities after filtering by the entry requirements of students (UCAS points)

- Author: Alex Spiers

---

## WhichUni: Data Set



- UNISTATS Dataset is a publicly available information set collected by the Higher Education Statistics Agency in the UK

- The data set can be found on the [HESA website] (https://www.hesa.ac.uk/unistatsdata)

- The data set includes the following variables:
  - *Unversity Name*
  - *tariffMean* this is the mean number of UCAS points (post-16 qualifications)
  that students have on entry to their course at University.
  - *instPremMean* this is a measure of the "Salary Premium" obtained by graduates from the
  university. This is calculated as a percentage increase/decrease when compared to graduates
  studying the same course nationally.
  - *totalUpper* the percentage of students that have obtained a first or upper-second degree.
  - *Location* the location of the campus.
  
---



## WhichUni: Features - Bubble Map

Users can choose to display the data as a ```googleVis``` package "Bubble"" Map 



<!-- BubbleChart generated in R 3.2.2 by googleVis 0.5.10 package -->
<!-- Sun Nov 22 21:41:58 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBubbleChartID1ec867afa61 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Aberystwyth University",
321.6858657,
-1.084251129,
13 
],
[
 "Anglia Ruskin University",
260.0132231,
-3.63903665,
17 
],
[
 "Aston University",
363.1507246,
null,
24 
],
[
 "Bangor University",
310.1952475,
-1.77335537,
21 
],
[
 "Bath Spa University",
318.3446154,
-1.748196366,
12 
],
[
 "Birkbeck College",
271.5694444,
4.250809061,
16 
],
[
 "Birmingham City University",
308.0385185,
null,
21 
],
[
 "Birmingham Metropolitan College",
201.5714286,
-9.610983982,
0 
],
[
 "Bishop Grosseteste University",
278.875,
0.2840136054,
12 
],
[
 "Bournemouth University",
334.502381,
2.915684228,
18 
],
[
 "BPP University",
234.1733333,
2.857142857,
15 
],
[
 "Bridgend College",
268,
-20.76923077,
12 
],
[
 "Brighton and Sussex Medical School",
503.8,
-26.66666667,
0 
],
[
 "Brunel University",
359.7765766,
-0.3770990993,
16 
],
[
 "Buckinghamshire New University",
264.3372549,
-1.732739776,
13 
],
[
 "Burnley College",
299.3333333,
-19.17211329,
0 
],
[
 "Canterbury Christ Church University",
275.6634429,
null,
19 
],
[
 "Cardiff Metropolitan University",
303.005,
-1.064707928,
15 
],
[
 "Cardiff University",
410.5741228,
4.926303517,
21 
],
[
 "Central School of Speech and Drama",
365.9428571,
17.37660581,
19 
],
[
 "Colchester Institute",
268.6111111,
-8.921568627,
21 
],
[
 "Conservatoire for Dance and Drama",
286.2,
null,
32 
],
[
 "Cornwall College",
296.6571429,
0,
14 
],
[
 "Courtauld Institute of Art",
425,
0,
40 
],
[
 "Coventry University",
297.7093923,
4.428409848,
18 
],
[
 "De Montfort University",
304.9923077,
null,
21 
],
[
 "Edge Hill University",
324.4310078,
-0.2877291421,
25 
],
[
 "Falmouth University",
301.2,
null,
17 
],
[
 "Futureworks Training Limited (t/a Futureworks)",
273,
0,
16 
],
[
 "Glyndŵr University",
252.8519481,
-6.767050162,
11 
],
[
 "Goldsmiths College",
332.368254,
-6.467007323,
22 
],
[
 "GSM London",
152.522449,
-10.63207892,
12 
],
[
 "Guildhall School of Music and Drama",
347.92,
6.944444444,
21 
],
[
 "Hadlow College",
290.1176471,
-9.239766082,
33 
],
[
 "Harper Adams University",
294.2862745,
7.139369135,
11 
],
[
 "Hartpury College",
241.75,
-2.324561404,
16 
],
[
 "Heythrop College",
269,
-10,
15 
],
[
 "Hull York Medical School",
520.8,
3.448275862,
0 
],
[
 "Imperial College of Science, Technology and Medicine",
542.5723577,
18.93119905,
40 
],
[
 "King's College London",
458.6135802,
4.586151022,
27 
],
[
 "Kingston University",
288.1413084,
null,
20 
],
[
 "Leeds Beckett University ",
291.649505,
null,
13 
],
[
 "Leeds College of Art",
379.76,
-1.066849817,
21 
],
[
 "Leeds Trinity University",
285.7020408,
-0.4839921405,
19 
],
[
 "Liverpool Hope University",
310.5306122,
-7.677912074,
15 
],
[
 "Liverpool John Moores University",
349.0544118,
null,
24 
],
[
 "London Metropolitan University",
248.9115646,
null,
13 
],
[
 "London School of Economics and Political Science",
519.873913,
19.03781911,
27 
],
[
 "London South Bank University",
243.0183673,
-6.051269101,
16 
],
[
 "Loughborough University",
387.6441379,
6.076799821,
26 
],
[
 "Medway School of Pharmacy",
341.4,
-3.80952381,
15 
],
[
 "Middlesex University",
280.8452555,
null,
19 
],
[
 "Myerscough College",
364.5555556,
-4.123708865,
29 
],
[
 "Newman University",
299.3529412,
-4.954918705,
8 
],
[
 "Norwich University of the Arts",
359.1157895,
null,
23 
],
[
 "Oxford Brookes University",
344.9730769,
1.445803876,
20 
],
[
 "Queen Mary University of London",
388.5937824,
-2.999305828,
22 
],
[
 "Ravensbourne",
272.0571429,
null,
19 
],
[
 "Reaseheath College",
328.1818182,
9.038461538,
15 
],
[
 "Roehampton University",
277.5277778,
-7.280892319,
10 
],
[
 "Rose Bruford College",
364.5090909,
7.88873689,
21 
],
[
 "Royal Agricultural University",
272.5538462,
6.685091725,
16 
],
[
 "Royal College of Music",
334.8,
-16.66666667,
38 
],
[
 "Royal Holloway and Bedford New College",
393.1234501,
-1.583507598,
22 
],
[
 "Sheffield Hallam University",
323.5214286,
3.253555657,
21 
],
[
 "Solihull College",
314.6666667,
0,
5 
],
[
 "Southampton Solent University",
248.9339394,
null,
17 
],
[
 "St George's Hospital Medical School",
385.52,
0.6591758879,
13 
],
[
 "St Mary's University College",
351.9333333,
-1.680672269,
28 
],
[
 "St Mary's University, Twickenham",
275.9545455,
-0.3865427845,
11 
],
[
 "Staffordshire University",
268.0374384,
-4.154533989,
23 
],
[
 "Swansea University",
328.0258661,
0.6453490258,
21 
],
[
 "Teesside University",
294.7186441,
-5.654754482,
22 
],
[
 "The Arts University Bournemouth",
329.4842105,
-6.767194535,
18 
],
[
 "The City University",
371.1460317,
0.5365097039,
22 
],
[
 "The Liverpool Institute for Performing Arts",
358.875,
16.17610837,
22 
],
[
 "The Manchester Metropolitan University",
323.05311,
null,
20 
],
[
 "The Nottingham Trent University",
302.4935323,
-0.005660066938,
15 
],
[
 "The Queen's University of Belfast",
384.2677419,
0.3822601955,
22 
],
[
 "The Royal Veterinary College",
384.5777778,
0.2619330561,
5 
],
[
 "The School of Oriental and African Studies",
418.3903333,
-2.523247553,
28 
],
[
 "The University of Bath",
471.511588,
10.97435701,
28 
],
[
 "The University of Birmingham",
424.5530667,
3.077700064,
28 
],
[
 "The University of Bolton",
256.9529412,
-9.741387636,
15 
],
[
 "The University of Bradford",
304.9664975,
-3.028063916,
18 
],
[
 "The University of Brighton",
312.5531707,
-3.927713172,
15 
],
[
 "The University of Bristol",
470.532342,
6.320951164,
24 
],
[
 "The University of Buckingham",
308.7006803,
5.328731098,
19 
],
[
 "The University of Cambridge",
553.9956522,
8.487511734,
27 
],
[
 "The University of Central Lancashire",
319.6673219,
-2.074979684,
14 
],
[
 "The University of Chichester",
299.4919355,
-5.750735082,
16 
],
[
 "The University of East Anglia",
392.4219409,
-1.972704786,
23 
],
[
 "The University of East London",
248.9824818,
null,
11 
],
[
 "The University of Essex",
327.3068729,
-7.751693864,
24 
],
[
 "The University of Exeter",
455.3661017,
3.51393332,
26 
],
[
 "The University of Greenwich",
303.8988889,
-8.348627173,
20 
],
[
 "The University of Huddersfield",
337.6039024,
-5.080389525,
20 
],
[
 "The University of Hull",
317.8108626,
null,
18 
],
[
 "The University of Keele",
352.3131707,
null,
19 
],
[
 "The University of Kent",
356.1672355,
-2.29323184,
24 
],
[
 "The University of Lancaster",
439.5192708,
10.03079568,
23 
],
[
 "The University of Leeds",
427.4510417,
null,
23 
],
[
 "The University of Leicester",
384.4719626,
0.1423628505,
22 
],
[
 "The University of Lincoln",
342.7461538,
-4.159247216,
15 
],
[
 "The University of Liverpool",
393.7091667,
3.156298776,
25 
],
[
 "The University of Manchester",
425.4950764,
2.185355095,
23 
],
[
 "The University of Northampton",
277.7194245,
-1.858098264,
18 
],
[
 "The University of Oxford",
554.03,
13.32870723,
31 
],
[
 "The University of Portsmouth",
316.1222857,
-2.887544359,
21 
],
[
 "The University of Reading",
376.3831502,
null,
19 
],
[
 "The University of Salford",
327.4642424,
-0.2271507643,
24 
],
[
 "The University of Sheffield",
432.8552795,
1.478359375,
26 
],
[
 "The University of Southampton",
421.9432692,
null,
27 
],
[
 "The University of Sunderland",
297.0380952,
null,
10 
],
[
 "The University of Surrey",
435.1287081,
7.958766749,
34 
],
[
 "The University of Sussex",
392.2526786,
-3.337483371,
22 
],
[
 "The University of Warwick",
458.2544803,
8.773795165,
29 
],
[
 "The University of West London",
254.1416667,
2.526444238,
17 
],
[
 "The University of Westminster",
313.7659574,
-5.802481415,
17 
],
[
 "The University of Winchester",
305.9010309,
null,
16 
],
[
 "The University of Wolverhampton",
260.9148594,
-7.62189668,
15 
],
[
 "The University of York",
434.0432787,
6.018549977,
28 
],
[
 "University Campus Suffolk",
321.2589744,
-6.032765907,
10 
],
[
 "University College Birmingham",
219.2851852,
-9.796530986,
20 
],
[
 "University College London",
498.2510823,
null,
36 
],
[
 "University for the Creative Arts",
325.4928571,
-1.374234471,
16 
],
[
 "University of Bedfordshire",
233.388024,
null,
10 
],
[
 "University of Chester",
300.1195531,
-3.0513993,
14 
],
[
 "University of Cumbria",
277.3530435,
-3.207541272,
17 
],
[
 "University of Derby",
291.4530303,
-1.767965272,
23 
],
[
 "University of Durham",
497.6797297,
10.83307295,
25 
],
[
 "University of Gloucestershire",
308.8870968,
null,
18 
],
[
 "University of Hertfordshire",
321.103662,
null,
21 
],
[
 "University of London Institute in Paris",
333,
-15.78947368,
10 
],
[
 "University of Newcastle-upon-Tyne",
411.3780822,
6.790644489,
29 
],
[
 "University of Northumbria at Newcastle",
359.987013,
4.510281937,
23 
],
[
 "University of Nottingham",
421.2176871,
null,
23 
],
[
 "University of Plymouth",
303.519403,
-2.648832764,
18 
],
[
 "University of South Wales",
315.0584615,
null,
17 
],
[
 "University of St Mark and St John",
300.7828571,
-15.81688136,
11 
],
[
 "University of the Arts, London",
347.7642105,
null,
18 
],
[
 "University of the West of England, Bristol",
325.9922481,
null,
23 
],
[
 "University of Ulster",
312.0553571,
-0.3635016934,
18 
],
[
 "University of Wales Trinity Saint David",
244.5376378,
-7.275546592,
9 
],
[
 "University of Worcester",
290.8565217,
null,
13 
],
[
 "Warwickshire College",
212,
-13.24786325,
15 
],
[
 "Writtle College",
258.4482759,
-2.340225564,
11 
],
[
 "York St John University",
289.5483871,
-6.075105069,
13 
] 
];
data.addColumn('string','NAME');
data.addColumn('number','tariffMean');
data.addColumn('number','instPremMean');
data.addColumn('number','totalFirst');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBubbleChartID1ec867afa61() {
var data = gvisDataBubbleChartID1ec867afa61();
var options = {};
options["width"] =   1200;
options["height"] =    800;
options["hAxis"] = {minValue:75, maxValue:125};

    var chart = new google.visualization.BubbleChart(
    document.getElementById('BubbleChartID1ec867afa61')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBubbleChartID1ec867afa61);
})();
function displayChartBubbleChartID1ec867afa61() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBubbleChartID1ec867afa61"></script>
 
<!-- divChart -->
  
<div id="BubbleChartID1ec867afa61" 
  style="width: 1200; height: 800;">
</div>

---

## WhichUni: Features - Bubble Map

Users can choose to display the data as a ```googleVis``` package "Bubble" Chart or "GeoMap"



<!-- BubbleChart generated in R 3.2.2 by googleVis 0.5.10 package -->
<!-- Sun Nov 22 21:41:59 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBubbleChartID1ec842241f4d () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Aberystwyth University",
321.6858657,
-1.084251129,
13 
],
[
 "Anglia Ruskin University",
260.0132231,
-3.63903665,
17 
],
[
 "Aston University",
363.1507246,
null,
24 
],
[
 "Bangor University",
310.1952475,
-1.77335537,
21 
],
[
 "Bath Spa University",
318.3446154,
-1.748196366,
12 
],
[
 "Birkbeck College",
271.5694444,
4.250809061,
16 
],
[
 "Birmingham City University",
308.0385185,
null,
21 
],
[
 "Birmingham Metropolitan College",
201.5714286,
-9.610983982,
0 
],
[
 "Bishop Grosseteste University",
278.875,
0.2840136054,
12 
],
[
 "Bournemouth University",
334.502381,
2.915684228,
18 
],
[
 "BPP University",
234.1733333,
2.857142857,
15 
],
[
 "Bridgend College",
268,
-20.76923077,
12 
],
[
 "Brighton and Sussex Medical School",
503.8,
-26.66666667,
0 
],
[
 "Brunel University",
359.7765766,
-0.3770990993,
16 
],
[
 "Buckinghamshire New University",
264.3372549,
-1.732739776,
13 
],
[
 "Burnley College",
299.3333333,
-19.17211329,
0 
],
[
 "Canterbury Christ Church University",
275.6634429,
null,
19 
],
[
 "Cardiff Metropolitan University",
303.005,
-1.064707928,
15 
],
[
 "Cardiff University",
410.5741228,
4.926303517,
21 
],
[
 "Central School of Speech and Drama",
365.9428571,
17.37660581,
19 
],
[
 "Colchester Institute",
268.6111111,
-8.921568627,
21 
],
[
 "Conservatoire for Dance and Drama",
286.2,
null,
32 
],
[
 "Cornwall College",
296.6571429,
0,
14 
],
[
 "Courtauld Institute of Art",
425,
0,
40 
],
[
 "Coventry University",
297.7093923,
4.428409848,
18 
],
[
 "De Montfort University",
304.9923077,
null,
21 
],
[
 "Edge Hill University",
324.4310078,
-0.2877291421,
25 
],
[
 "Falmouth University",
301.2,
null,
17 
],
[
 "Futureworks Training Limited (t/a Futureworks)",
273,
0,
16 
],
[
 "Glyndŵr University",
252.8519481,
-6.767050162,
11 
],
[
 "Goldsmiths College",
332.368254,
-6.467007323,
22 
],
[
 "GSM London",
152.522449,
-10.63207892,
12 
],
[
 "Guildhall School of Music and Drama",
347.92,
6.944444444,
21 
],
[
 "Hadlow College",
290.1176471,
-9.239766082,
33 
],
[
 "Harper Adams University",
294.2862745,
7.139369135,
11 
],
[
 "Hartpury College",
241.75,
-2.324561404,
16 
],
[
 "Heythrop College",
269,
-10,
15 
],
[
 "Hull York Medical School",
520.8,
3.448275862,
0 
],
[
 "Imperial College of Science, Technology and Medicine",
542.5723577,
18.93119905,
40 
],
[
 "King's College London",
458.6135802,
4.586151022,
27 
],
[
 "Kingston University",
288.1413084,
null,
20 
],
[
 "Leeds Beckett University ",
291.649505,
null,
13 
],
[
 "Leeds College of Art",
379.76,
-1.066849817,
21 
],
[
 "Leeds Trinity University",
285.7020408,
-0.4839921405,
19 
],
[
 "Liverpool Hope University",
310.5306122,
-7.677912074,
15 
],
[
 "Liverpool John Moores University",
349.0544118,
null,
24 
],
[
 "London Metropolitan University",
248.9115646,
null,
13 
],
[
 "London School of Economics and Political Science",
519.873913,
19.03781911,
27 
],
[
 "London South Bank University",
243.0183673,
-6.051269101,
16 
],
[
 "Loughborough University",
387.6441379,
6.076799821,
26 
],
[
 "Medway School of Pharmacy",
341.4,
-3.80952381,
15 
],
[
 "Middlesex University",
280.8452555,
null,
19 
],
[
 "Myerscough College",
364.5555556,
-4.123708865,
29 
],
[
 "Newman University",
299.3529412,
-4.954918705,
8 
],
[
 "Norwich University of the Arts",
359.1157895,
null,
23 
],
[
 "Oxford Brookes University",
344.9730769,
1.445803876,
20 
],
[
 "Queen Mary University of London",
388.5937824,
-2.999305828,
22 
],
[
 "Ravensbourne",
272.0571429,
null,
19 
],
[
 "Reaseheath College",
328.1818182,
9.038461538,
15 
],
[
 "Roehampton University",
277.5277778,
-7.280892319,
10 
],
[
 "Rose Bruford College",
364.5090909,
7.88873689,
21 
],
[
 "Royal Agricultural University",
272.5538462,
6.685091725,
16 
],
[
 "Royal College of Music",
334.8,
-16.66666667,
38 
],
[
 "Royal Holloway and Bedford New College",
393.1234501,
-1.583507598,
22 
],
[
 "Sheffield Hallam University",
323.5214286,
3.253555657,
21 
],
[
 "Solihull College",
314.6666667,
0,
5 
],
[
 "Southampton Solent University",
248.9339394,
null,
17 
],
[
 "St George's Hospital Medical School",
385.52,
0.6591758879,
13 
],
[
 "St Mary's University College",
351.9333333,
-1.680672269,
28 
],
[
 "St Mary's University, Twickenham",
275.9545455,
-0.3865427845,
11 
],
[
 "Staffordshire University",
268.0374384,
-4.154533989,
23 
],
[
 "Swansea University",
328.0258661,
0.6453490258,
21 
],
[
 "Teesside University",
294.7186441,
-5.654754482,
22 
],
[
 "The Arts University Bournemouth",
329.4842105,
-6.767194535,
18 
],
[
 "The City University",
371.1460317,
0.5365097039,
22 
],
[
 "The Liverpool Institute for Performing Arts",
358.875,
16.17610837,
22 
],
[
 "The Manchester Metropolitan University",
323.05311,
null,
20 
],
[
 "The Nottingham Trent University",
302.4935323,
-0.005660066938,
15 
],
[
 "The Queen's University of Belfast",
384.2677419,
0.3822601955,
22 
],
[
 "The Royal Veterinary College",
384.5777778,
0.2619330561,
5 
],
[
 "The School of Oriental and African Studies",
418.3903333,
-2.523247553,
28 
],
[
 "The University of Bath",
471.511588,
10.97435701,
28 
],
[
 "The University of Birmingham",
424.5530667,
3.077700064,
28 
],
[
 "The University of Bolton",
256.9529412,
-9.741387636,
15 
],
[
 "The University of Bradford",
304.9664975,
-3.028063916,
18 
],
[
 "The University of Brighton",
312.5531707,
-3.927713172,
15 
],
[
 "The University of Bristol",
470.532342,
6.320951164,
24 
],
[
 "The University of Buckingham",
308.7006803,
5.328731098,
19 
],
[
 "The University of Cambridge",
553.9956522,
8.487511734,
27 
],
[
 "The University of Central Lancashire",
319.6673219,
-2.074979684,
14 
],
[
 "The University of Chichester",
299.4919355,
-5.750735082,
16 
],
[
 "The University of East Anglia",
392.4219409,
-1.972704786,
23 
],
[
 "The University of East London",
248.9824818,
null,
11 
],
[
 "The University of Essex",
327.3068729,
-7.751693864,
24 
],
[
 "The University of Exeter",
455.3661017,
3.51393332,
26 
],
[
 "The University of Greenwich",
303.8988889,
-8.348627173,
20 
],
[
 "The University of Huddersfield",
337.6039024,
-5.080389525,
20 
],
[
 "The University of Hull",
317.8108626,
null,
18 
],
[
 "The University of Keele",
352.3131707,
null,
19 
],
[
 "The University of Kent",
356.1672355,
-2.29323184,
24 
],
[
 "The University of Lancaster",
439.5192708,
10.03079568,
23 
],
[
 "The University of Leeds",
427.4510417,
null,
23 
],
[
 "The University of Leicester",
384.4719626,
0.1423628505,
22 
],
[
 "The University of Lincoln",
342.7461538,
-4.159247216,
15 
],
[
 "The University of Liverpool",
393.7091667,
3.156298776,
25 
],
[
 "The University of Manchester",
425.4950764,
2.185355095,
23 
],
[
 "The University of Northampton",
277.7194245,
-1.858098264,
18 
],
[
 "The University of Oxford",
554.03,
13.32870723,
31 
],
[
 "The University of Portsmouth",
316.1222857,
-2.887544359,
21 
],
[
 "The University of Reading",
376.3831502,
null,
19 
],
[
 "The University of Salford",
327.4642424,
-0.2271507643,
24 
],
[
 "The University of Sheffield",
432.8552795,
1.478359375,
26 
],
[
 "The University of Southampton",
421.9432692,
null,
27 
],
[
 "The University of Sunderland",
297.0380952,
null,
10 
],
[
 "The University of Surrey",
435.1287081,
7.958766749,
34 
],
[
 "The University of Sussex",
392.2526786,
-3.337483371,
22 
],
[
 "The University of Warwick",
458.2544803,
8.773795165,
29 
],
[
 "The University of West London",
254.1416667,
2.526444238,
17 
],
[
 "The University of Westminster",
313.7659574,
-5.802481415,
17 
],
[
 "The University of Winchester",
305.9010309,
null,
16 
],
[
 "The University of Wolverhampton",
260.9148594,
-7.62189668,
15 
],
[
 "The University of York",
434.0432787,
6.018549977,
28 
],
[
 "University Campus Suffolk",
321.2589744,
-6.032765907,
10 
],
[
 "University College Birmingham",
219.2851852,
-9.796530986,
20 
],
[
 "University College London",
498.2510823,
null,
36 
],
[
 "University for the Creative Arts",
325.4928571,
-1.374234471,
16 
],
[
 "University of Bedfordshire",
233.388024,
null,
10 
],
[
 "University of Chester",
300.1195531,
-3.0513993,
14 
],
[
 "University of Cumbria",
277.3530435,
-3.207541272,
17 
],
[
 "University of Derby",
291.4530303,
-1.767965272,
23 
],
[
 "University of Durham",
497.6797297,
10.83307295,
25 
],
[
 "University of Gloucestershire",
308.8870968,
null,
18 
],
[
 "University of Hertfordshire",
321.103662,
null,
21 
],
[
 "University of London Institute in Paris",
333,
-15.78947368,
10 
],
[
 "University of Newcastle-upon-Tyne",
411.3780822,
6.790644489,
29 
],
[
 "University of Northumbria at Newcastle",
359.987013,
4.510281937,
23 
],
[
 "University of Nottingham",
421.2176871,
null,
23 
],
[
 "University of Plymouth",
303.519403,
-2.648832764,
18 
],
[
 "University of South Wales",
315.0584615,
null,
17 
],
[
 "University of St Mark and St John",
300.7828571,
-15.81688136,
11 
],
[
 "University of the Arts, London",
347.7642105,
null,
18 
],
[
 "University of the West of England, Bristol",
325.9922481,
null,
23 
],
[
 "University of Ulster",
312.0553571,
-0.3635016934,
18 
],
[
 "University of Wales Trinity Saint David",
244.5376378,
-7.275546592,
9 
],
[
 "University of Worcester",
290.8565217,
null,
13 
],
[
 "Warwickshire College",
212,
-13.24786325,
15 
],
[
 "Writtle College",
258.4482759,
-2.340225564,
11 
],
[
 "York St John University",
289.5483871,
-6.075105069,
13 
] 
];
data.addColumn('string','NAME');
data.addColumn('number','tariffMean');
data.addColumn('number','instPremMean');
data.addColumn('number','totalFirst');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBubbleChartID1ec842241f4d() {
var data = gvisDataBubbleChartID1ec842241f4d();
var options = {};
options["width"] =    800;
options["height"] =    400;
options["hAxis"] = {minValue:75, maxValue:125};

    var chart = new google.visualization.BubbleChart(
    document.getElementById('BubbleChartID1ec842241f4d')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBubbleChartID1ec842241f4d);
})();
function displayChartBubbleChartID1ec842241f4d() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBubbleChartID1ec842241f4d"></script>
 
<!-- divChart -->
  
<div id="BubbleChartID1ec842241f4d" 
  style="width: 800; height: 400;">
</div>

---

## WhichUni: Intended User Base

Intended users include:

- Prospective students: can use the web app to inform their choices before applying to university

- Employers and graduate recruiters: can use web app to identify key talent for their recruitment

- University Marketing deparments: can use web app to benchmark their institutions against the competition and highlight unique aspects.

