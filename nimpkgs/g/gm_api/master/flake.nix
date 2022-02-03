{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';
  inputs.src-gm_api-master.flake = false;
  inputs.src-gm_api-master.type = "other";
  inputs.src-gm_api-master.owner = "thisago";
  inputs.src-gm_api-master.repo = "gm_api";
  inputs.src-gm_api-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gm_api-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gm_api-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gm_api-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}