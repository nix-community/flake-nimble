{
  description = ''A SQLbuilder with support for NULL values'';
  inputs.src-sqlbuilder-v0_3_0.flake = false;
  inputs.src-sqlbuilder-v0_3_0.type = "github";
  inputs.src-sqlbuilder-v0_3_0.owner = "ThomasTJdev";
  inputs.src-sqlbuilder-v0_3_0.repo = "nim_sqlbuilder";
  inputs.src-sqlbuilder-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-sqlbuilder-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqlbuilder-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqlbuilder-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}