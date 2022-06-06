using Microsoft.EntityFrameworkCore.Migrations;
using MySql.EntityFrameworkCore.Metadata;

namespace Mission3.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Medicaments",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    NomProduit = table.Column<string>(type: "varchar(50)", maxLength: 50, nullable: true),
                    Prix = table.Column<double>(type: "double", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: true),
                    TypeMedicament = table.Column<string>(type: "varchar(3)", maxLength: 3, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Medicaments", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TypeMedicaments",
                columns: table => new
                {
                    Libelle = table.Column<string>(type: "varchar(3)", maxLength: 3, nullable: false),
                    Designation = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TypeMedicaments", x => x.Libelle);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Medicaments");

            migrationBuilder.DropTable(
                name: "TypeMedicaments");
        }
    }
}
