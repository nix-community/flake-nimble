{
  description = ''A SQLbuilder with support for NULL values'';
  inputs.src-sqlbuilder-master.flake = false;
  inputs.src-sqlbuilder-master.type = "github";
  inputs.src-sqlbuilder-master.owner = "ThomasTJdev";
  inputs.src-sqlbuilder-master.repo = "nim_sqlbuilder";
  inputs.src-sqlbuilder-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sqlbuilder-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqlbuilder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqlbuilder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}