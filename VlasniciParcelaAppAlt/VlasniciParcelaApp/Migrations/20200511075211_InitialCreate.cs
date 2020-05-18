using Microsoft.EntityFrameworkCore.Migrations;

namespace VlasniciParcelaApp.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Vlasnik",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Ime = table.Column<string>(nullable: false),
                    Prezime = table.Column<string>(nullable: false),
                    OIB = table.Column<string>(maxLength: 11, nullable: false),
                    Adresa = table.Column<string>(nullable: false),
                    Grad = table.Column<string>(nullable: false),
                    Parcele = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Vlasnik", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Vlasnik");
        }
    }
}
