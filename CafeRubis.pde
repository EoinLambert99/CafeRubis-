//Eoin Lambert
//Student Number - C16362513

void setup()
{
  size(800, 600);
  loadData();
  printProducts();
}


void loadData()
{
   Table table = loadTable("cafe.csv", "header");
   for(TableRow row:table.rows())
   {
     Product product = new Product(row);
     bill.add(product);
     
   }
}

void printProducts()
{
  for(Product product:bill)
  {
    println(product);
  }
}

ArrayList<Product> product = new ArrayList<Product>(); 
ArrayList<Product>bill = new ArrayList<Product>();


void displayProducts()
{
  textAlign(CENTER,CENTER);
  textSize(30);
  fill(0);
  stroke(0);  
  text("Cafe Rubis Till System", width /2, 50);
  
   float x = 0;
   float y = 100;

   for(Product product:bill)
   {
     x = 100;
     y +=65;
    String s = nf(product.price, 1, 2);
     fill(255);
     rect(x - 5, y -25, 250, 40);
     textSize(16);
     stroke(0);
     fill(0);
     textAlign(LEFT);
     text(product.name + "   " +  s, x , y);
     
    
   }
   
}

int value =0;
float price = 0;

void mousePressed()
{
    if (value == 0)
    {
     price = price + 2.90; 
    
    }
}

void draw()
{
  background(150);
  displayProducts();
  text(price, 600, 500);
}