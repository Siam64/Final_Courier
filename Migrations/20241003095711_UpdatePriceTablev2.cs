using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourierManagement.Migrations
{
    /// <inheritdoc />
    public partial class UpdatePriceTablev2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "PriceTable");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "PriceTable");

            migrationBuilder.DropColumn(
                name: "Serial",
                table: "PriceTable");

            migrationBuilder.DropColumn(
                name: "Type",
                table: "PriceTable");

            migrationBuilder.RenameColumn(
                name: "Value",
                table: "PriceTable",
                newName: "ParcelType");

            migrationBuilder.AddColumn<double>(
                name: "BasePrice",
                table: "PriceTable",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "BasePrice",
                table: "PriceTable");

            migrationBuilder.RenameColumn(
                name: "ParcelType",
                table: "PriceTable",
                newName: "Value");

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "PriceTable",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "PriceTable",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "Serial",
                table: "PriceTable",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Type",
                table: "PriceTable",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
