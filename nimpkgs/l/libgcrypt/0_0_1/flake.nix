{
  description = ''libgcrypt wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libgcrypt-0_0_1.flake = false;
  inputs.src-libgcrypt-0_0_1.type = "github";
  inputs.src-libgcrypt-0_0_1.owner = "FedericoCeratto";
  inputs.src-libgcrypt-0_0_1.repo = "nim-libgcrypt";
  inputs.src-libgcrypt-0_0_1.ref = "refs/tags/0.0.1";
  inputs.src-libgcrypt-0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libgcrypt-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgcrypt-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libgcrypt-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}