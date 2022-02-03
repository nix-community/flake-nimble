{
  description = ''A SQLbuilder with support for NULL values'';
  inputs.src-sqlbuilder-v0_1_1.flake = false;
  inputs.src-sqlbuilder-v0_1_1.type = "github";
  inputs.src-sqlbuilder-v0_1_1.owner = "ThomasTJdev";
  inputs.src-sqlbuilder-v0_1_1.repo = "nim_sqlbuilder";
  inputs.src-sqlbuilder-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-sqlbuilder-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqlbuilder-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqlbuilder-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}