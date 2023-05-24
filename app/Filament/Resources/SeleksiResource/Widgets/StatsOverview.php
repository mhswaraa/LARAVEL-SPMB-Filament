<?php

namespace App\Filament\Resources\SeleksiResource\Widgets;

use App\Models\Seleksi;
use App\Models\SeleksiPeserta;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;

class StatsOverview extends BaseWidget
{
    protected function getCards(): array
{
    return [
        Card::make('Tahap 1', SeleksiPeserta::whereHas('seleksi', function ($query) {
            $query->where('tahap', 'Tahap 1')->where('hasil', '1');
        })->count()),
        Card::make('Tahap 2', SeleksiPeserta::whereHas('seleksi', function ($query) {
            $query->where('tahap', 'Tahap 2')->where('hasil', '1');
        })->count()),
        Card::make('Tahap 3', SeleksiPeserta::whereHas('seleksi', function ($query) {
            $query->where('tahap', 'tahap 3')->where('hasil', '1');
        })->count()),
    ];
}

}
