<?php

namespace App\Console\Commands;

use App\Http\Controllers\ExportController;
use App\Http\Controllers\TagvalController;
use Illuminate\Console\Command;

class CommandNode extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'nodejs:parkirexpress';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        exec('pm2 start C:\xampp\htdocs\dis-parkiran\ParkirExpress\ParkirExpress.js', $output, $returnVar);
        if ($returnVar !== 0) {
            $this->error('Node.js script failed');
        } else {
            $this->info('Node.js script executed successfully');
        }

        return 0;
    }
}
