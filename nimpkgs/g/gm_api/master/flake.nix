{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gm_api-master.flake = false;
  inputs.src-gm_api-master.type = "other";
  inputs.src-gm_api-master.owner = "thisago";
  inputs.src-gm_api-master.repo = "gm_api";
  inputs.src-gm_api-master.ref = "refs/heads/master";
  inputs.src-gm_api-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gm_api-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gm_api-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gm_api-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}