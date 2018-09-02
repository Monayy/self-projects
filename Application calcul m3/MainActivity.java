package com.calculm3.monayy.metrescubes;

        import android.support.v7.app.AppCompatActivity;
        import android.os.Bundle;
        import android.view.View;
        import android.widget.Button;
        import android.widget.EditText;
        import android.widget.TextView;
        import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText number1, number2, number3;
    TextView result;
    Button calculate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        number1 = (EditText)findViewById(R.id.num1);
        number2 = (EditText)findViewById(R.id.num2);
        number3 = (EditText)findViewById(R.id.num3);

        result = (TextView)findViewById(R.id.result);

        calculate = (Button)findViewById(R.id.buttonCalculate);

        calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                if (number1.getText().length() != 0 && number2.getText().length() != 0 && number3.getText().length() != 0){

                double n1 = Double.parseDouble(number1.getText().toString());
                double n2 = Double.parseDouble(number2.getText().toString());
                double n3 = Double.parseDouble(number3.getText().toString());

                double res = (n1 * n2 * n3);

                result.setText(String.valueOf(res));
            }
            else {
                    Toast.makeText(view.getContext(),"Please enter the numbers",Toast.LENGTH_SHORT).show();
                }


        };
    });
}}
