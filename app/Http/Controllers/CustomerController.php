<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use App\Traits\HtmlTrait;
use DataTables;

class CustomerController extends Controller
{
    use HtmlTrait;
    public function allUnverifiedAccounts(Request $request)
    {
        // return view('admin.customers.unverified_accounts')->compact('customers');
        try {
            if ($request->ajax()) {
                $customer = Customer::where('status', 'not active')->get();
                return DataTables::of($customer)
                    ->addIndexColumn()
                    ->addColumn('action', function ($row) {
                        $btn = $this->href(route('customer.edit', $row->id), __('Accept'));
                        return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
            }
            return view('customer.customers.unverified_accounts');
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public function edit($id)
    {
        $customer = Customer::findOrFail($id);
        $customer->update([
            'status' => 'active'
        ]);
        return redirect()->back();
    }
}
