using Microsoft.EntityFrameworkCore.Migrations;

namespace Campaign.Data.Migrations
{
    public partial class updatetablecategory : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "RelatedId",
                table: "Category",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RelatedId",
                table: "Category");
        }
    }
}
