// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.5.15;

interface IAdapter {
    function intakeNumeraire (uint256 amount) external returns (uint256);
    function intakeRaw (uint256 amount) external;
    function outputNumeraire (address dst, uint256 amount) external returns (uint256);
    function outputRaw (address dst, uint256 amount) external;
    function getNumeraireAmount (uint256) external returns (uint256);
    function getRawAmount (uint256) external returns (uint256);
    function getNumeraireBalance (uint256) external returns (uint256);
    function viewRawAmount (uint256) external view returns (uint256);
    function viewNumeraireAmount (uint256) external view returns (uint256);
    function viewNumeraireBalance (address addr) external view returns (uint256);
}