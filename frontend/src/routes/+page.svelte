<script lang="ts">
	import Navbar from "$lib/Navbar.svelte";

    const statistics = [
        {
            title: "Total Students",
            value: "850",
            change: "+12 this month"
        },
        {
            title: "Total Teachers",
            value: "45",
            change: "+3 this month"
        },
        {
            title: "Classrooms",
            value: "30",
            change: "5 available"
        },
        {
            title: "Subjects",
            value: "20",
            change: "2 new subjects"
        }
    ];


    const studentGrowth = [
        { month: "Jan", count: 500 },
        { month: "Feb", count: 620 },
        { month: "Mar", count: 700 },
        { month: "Apr", count: 760 },
        { month: "May", count: 850 }
    ];



    const classes = [
        {
            name: "Class 10 A",
            subject: "Mathematics",
            time: "10:00 AM"
        },
        {
            name: "Class 8 B",
            subject: "Science",
            time: "1:00 PM"
        },
        {
            name: "Class 9 C",
            subject: "English",
            time: "3:00 PM"
        }
    ];



</script>


<Navbar />

<div class="p-6 bg-gray-50 min-h-screen">

    <h1 class="text-3xl font-bold text-gray-800 mb-6">
        Dashboard
    </h1>


    <!-- Statistics Cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5">

        {#each statistics as item}

            <div class="bg-white rounded-xl shadow-sm p-5 border">

                <p class="text-gray-500 text-sm">
                    {item.title}
                </p>

                <h2 class="text-3xl font-bold text-indigo-600 mt-2">
                    {item.value}
                </h2>

                <p class="text-sm text-green-600 mt-2">
                    {item.change}
                </p>

            </div>

        {/each}

    </div>



    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mt-6">


        <!-- Student Growth Chart -->
        <div class="lg:col-span-2 bg-white rounded-xl shadow-sm p-6 border">

            <h2 class="font-semibold text-lg mb-5">
                Student Growth
            </h2>


            <div class="flex items-end gap-5 h-60">

                {#each studentGrowth as item}

                    <div class="flex flex-col items-center flex-1">

                        <div
                            class="bg-indigo-500 w-full rounded-t-lg"
                            style="height: {item.count / 4}px"
                        ></div>


                        <span class="text-sm text-gray-500 mt-2">
                            {item.month}
                        </span>

                    </div>

                {/each}

            </div>

        </div>



        <!-- Gender -->
        <div class="bg-white rounded-xl shadow-sm p-6 border">

            <h2 class="font-semibold text-lg mb-5">
                Student Gender
            </h2>


            <div class="flex justify-center items-center h-40">

                <div class="text-center">

                    <div class="text-4xl font-bold text-indigo-600">
                        52%
                    </div>

                    <p class="text-gray-500">
                        Male Students
                    </p>

                </div>

            </div>


            <div class="flex justify-between mt-5 text-sm">

                <div>
                    <p class="text-gray-500">
                        Male
                    </p>
                    <p class="font-bold">
                        450
                    </p>
                </div>


                <div>
                    <p class="text-gray-500">
                        Female
                    </p>
                    <p class="font-bold">
                        400
                    </p>
                </div>

            </div>

        </div>


    </div>




    <!-- Attendance + Upcoming Exams -->

<div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mt-6">


    <!-- Attendance Overview -->

    <div class="bg-white rounded-xl shadow-sm p-6 border">

        <h2 class="font-semibold text-lg mb-5">
            Attendance Overview
        </h2>


        <div class="grid grid-cols-3 gap-4 text-center">

            <div class="bg-green-50 rounded-lg p-4">
                <p class="text-sm text-gray-500">
                    Present
                </p>

                <p class="text-2xl font-bold text-green-600">
                    780
                </p>
            </div>


            <div class="bg-red-50 rounded-lg p-4">
                <p class="text-sm text-gray-500">
                    Absent
                </p>

                <p class="text-2xl font-bold text-red-600">
                    45
                </p>
            </div>


            <div class="bg-yellow-50 rounded-lg p-4">
                <p class="text-sm text-gray-500">
                    Late
                </p>

                <p class="text-2xl font-bold text-yellow-600">
                    25
                </p>
            </div>

        </div>


        <!-- Progress Bar -->

        <div class="mt-6">

            <div class="flex justify-between text-sm mb-2">
                <span class="text-gray-500">
                    Attendance Rate
                </span>

                <span class="font-semibold">
                    92%
                </span>
            </div>


            <div class="w-full bg-gray-200 rounded-full h-3">

                <div
                    class="bg-green-500 h-3 rounded-full"
                    style="width:92%"
                ></div>

            </div>

        </div>

    </div>




    <!-- Upcoming Exams -->

    <div class="bg-white rounded-xl shadow-sm p-6 border">

        <h2 class="font-semibold text-lg mb-5">
            Upcoming Exams
        </h2>


        <div class="space-y-4">


            <div class="p-4 bg-gray-50 rounded-lg">

                <div class="flex justify-between">

                    <p class="font-medium">
                        Mathematics Exam
                    </p>

                    <span class="text-indigo-600 text-sm">
                        20 July
                    </span>

                </div>


                <p class="text-sm text-gray-500 mt-1">
                    Class 10 A
                </p>

            </div>



            <div class="p-4 bg-gray-50 rounded-lg">

                <div class="flex justify-between">

                    <p class="font-medium">
                        Science Exam
                    </p>

                    <span class="text-indigo-600 text-sm">
                        25 July
                    </span>

                </div>


                <p class="text-sm text-gray-500 mt-1">
                    Class 8 B
                </p>

            </div>




            <div class="p-4 bg-gray-50 rounded-lg">

                <div class="flex justify-between">

                    <p class="font-medium">
                        English Exam
                    </p>

                    <span class="text-indigo-600 text-sm">
                        30 July
                    </span>

                </div>


                <p class="text-sm text-gray-500 mt-1">
                    Class 9 C
                </p>

            </div>


        </div>

    </div>


</div>

</div>