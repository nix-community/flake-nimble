{
  description = ''A new awesome nimble package'';
  inputs.src-spacenimtraders-0_2_0.flake = false;
  inputs.src-spacenimtraders-0_2_0.type = "github";
  inputs.src-spacenimtraders-0_2_0.owner = "ire4ever1190";
  inputs.src-spacenimtraders-0_2_0.repo = "SpaceNimTraders";
  inputs.src-spacenimtraders-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-spacenimtraders-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spacenimtraders-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spacenimtraders-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}