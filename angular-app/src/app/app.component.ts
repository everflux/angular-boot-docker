import { Component } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent{
  title = 'app';
  greeting: Observable<string>;

  constructor(private http: Http){}

  getGreeting(){
    this.greeting = this.http.get('http://localhost:8080/greeting')
      .map(res => res.json());
  }
}
