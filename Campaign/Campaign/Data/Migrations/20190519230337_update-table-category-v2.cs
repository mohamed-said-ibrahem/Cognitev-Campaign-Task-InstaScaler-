using Microsoft.EntityFrameworkCore.Migrations;

namespace Campaign.Data.Migrations
{
    public partial class updatetablecategoryv2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Compaign_Category_CategoryId",
                table: "Compaign");

            migrationBuilder.AlterColumn<int>(
                name: "CategoryId",
                table: "Compaign",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddForeignKey(
                name: "FK_Compaign_Category_CategoryId",
                table: "Compaign",
                column: "CategoryId",
                principalTable: "Category",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Compaign_Category_CategoryId",
                table: "Compaign");

            migrationBuilder.AlterColumn<int>(
                name: "CategoryId",
                table: "Compaign",
                nullable: false,
                oldClrType: typeof(int),
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Compaign_Category_CategoryId",
                table: "Compaign",
                column: "CategoryId",
                principalTable: "Category",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
