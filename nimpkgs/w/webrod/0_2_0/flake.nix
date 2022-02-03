{
  description = ''webrod'';
  inputs.src-webrod-0_2_0.flake = false;
  inputs.src-webrod-0_2_0.type = "github";
  inputs.src-webrod-0_2_0.owner = "j-a-s-d";
  inputs.src-webrod-0_2_0.repo = "webrod";
  inputs.src-webrod-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-webrod-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webrod-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}