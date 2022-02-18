{
  description = ''Easy and fast generator for valid json in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-json_builder-master.flake = false;
  inputs.src-json_builder-master.type = "github";
  inputs.src-json_builder-master.owner = "undecided";
  inputs.src-json_builder-master.repo = "json_builder";
  inputs.src-json_builder-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-json_builder-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json_builder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-json_builder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}