#include<iostream>
#include<string>
#include<vector>
#include<time.h>

using namespace std;

int main(void)
{

	int nPart;
	double charge_over_mass_, E, dt;
	clock_t time_start, time_end;
	vector<double> vx_v, vy_v, vz_v, x_v;
	double *vx, *vy, *vz, *x;

	nPart = 10000000;
	charge_over_mass_ = 1242422.2342;
	E = 34.3552;
	dt = 1.0d-12;

	vx_v.resize(nPart);
	vy_v.resize(nPart);
	vz_v.resize(nPart);
	x_v.resize(nPart);

	vx = new double[nPart];
	vy = new double[nPart];
	vz = new double[nPart];
	x = new double[nPart];

	for(int iPart = 0; iPart < nPart; iPart++)
	{
		vx_v[iPart] = 12.34455;
		vy_v[iPart] = 12.34455;
		vz_v[iPart] = 12.34455;
		x_v[iPart] = 12.34455;

		vx[iPart] = 12.34455;
		vy[iPart] = 12.34455;
		vz[iPart] = 12.34455;
		x[iPart] = 12.34455;
	}



	time_start = clock();
	for(int iPart = 0; iPart < nPart; iPart++)
	{
		vx_v[iPart] += charge_over_mass_ * E * dt;
		vy_v[iPart] += charge_over_mass_ * E * dt;
		vz_v[iPart] += charge_over_mass_ * E * dt;
		x_v [iPart] += vx_v[iPart] * dt;
	}
	time_end = clock();
	cout<<"Vector total time: "<< (double)(time_end-time_start)/CLOCKS_PER_SEC <<endl;


	time_start = clock();
	for(int iPart = 0; iPart < nPart; iPart++)
	{
		vx[iPart] += charge_over_mass_ * E * dt;
		vy[iPart] += charge_over_mass_ * E * dt;
		vz[iPart] += charge_over_mass_ * E * dt;
		x [iPart] += vx[iPart] * dt;
	}
	time_end = clock();
	cout<<"Pointer total time: "<< (double)(time_end-time_start)/CLOCKS_PER_SEC <<endl;


}
