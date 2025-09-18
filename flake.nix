{
  inputs = {
    dev-flakes.url = "github:cdkooistra/dev-flakes";
    flake-utils.url = "github:numtide/flake-utils";
  };
  
  outputs = { dev-flakes, flake-utils, ... }:
    let shell = "zola";
    in flake-utils.lib.eachDefaultSystem (system: {
      devShells.default = dev-flakes.devShells.${system}.${shell};
    });
}
