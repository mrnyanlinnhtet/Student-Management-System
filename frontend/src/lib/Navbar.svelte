<script lang="ts">
    import { page } from '$app/state';

    const navItems = [
        { name: 'Home', href: '/' },
        { name: 'Students', href: '/students' },
        { name: 'Teachers', href: '/teachers' },
        { name: 'Classrooms', href: '/classrooms' },
        { name: 'Subjects', href: '/subjects' },
        { name: 'Attendances', href: '/attendances' },
        { name: 'Exams', href: '/exams' },
        { name: 'Logout', href: '/logout' }
    ];

    const isActive = (path: string) => {
        return page.url.pathname === path;
    };
</script>

<!-- Added sticky, top-0, and z-50 here -->
<nav class="sticky top-0 z-50 bg-indigo-600 text-white px-6 py-3 shadow-md">
    <div class="flex items-center justify-between">

        <!-- Logo -->
        <a href="/" class="flex items-center gap-3">
            <img
                    src="/logo-3.jpeg"
                    alt="Logo"
                    class="w-14 h-14 rounded-full object-cover"
            />

            <span class="text-xl font-bold">
                Student Management
            </span>
        </a>

        <!-- Navigation Links -->
        <div class="flex items-center gap-6">
            {#each navItems as item}
                <a
                        href={item.href}
                        class="px-3 py-2 rounded-md transition
                    {isActive(item.href)
                        ? 'bg-indigo-800 font-semibold'
                        : 'hover:bg-indigo-500'}"
                >
                    {item.name}
                </a>
            {/each}
        </div>

    </div>
</nav>