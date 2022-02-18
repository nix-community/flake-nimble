{
  description = ''SHIORI Protocol Parser/Builder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shiori-master.flake = false;
  inputs.src-shiori-master.type = "github";
  inputs.src-shiori-master.owner = "Narazaka";
  inputs.src-shiori-master.repo = "shiori-nim";
  inputs.src-shiori-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shiori-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shiori-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}