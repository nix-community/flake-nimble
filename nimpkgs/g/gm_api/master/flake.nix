{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gm_api-master.flake = false;
  inputs.src-gm_api-master.type = "other";
  inputs.src-gm_api-master.owner = "thisago";
  inputs.src-gm_api-master.repo = "gm_api";
  inputs.src-gm_api-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gm_api-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gm_api-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gm_api-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}