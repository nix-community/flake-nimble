{
  description = ''ski is library for SKI combinator.'';
  inputs.src-ski-master.flake = false;
  inputs.src-ski-master.type = "github";
  inputs.src-ski-master.owner = "jiro4989";
  inputs.src-ski-master.repo = "ski";
  inputs.src-ski-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ski-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ski-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ski-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}