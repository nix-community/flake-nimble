{
  description = ''Fast persistent key-value store, based on libmdbx'';
  inputs.src-nimdbx-main.flake = false;
  inputs.src-nimdbx-main.type = "github";
  inputs.src-nimdbx-main.owner = "snej";
  inputs.src-nimdbx-main.repo = "nimdbx";
  inputs.src-nimdbx-main.ref = "refs/heads/main";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-NimDBX-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimDBX-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NimDBX-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}