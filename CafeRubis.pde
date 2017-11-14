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
   noFill();
    float x = 50, y = 400;
   for(Product product:bill)
   {
     stroke(255,255,0); 
    
    textAlign(LEFT, CENTER);
    fill(255);
    text(product.name, x + 10, y - 2);
    
   }
   
}

void draw()
{
  background(255);
  displayProducts();
}