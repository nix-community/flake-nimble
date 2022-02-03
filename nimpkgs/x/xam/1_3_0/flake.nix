{
  description = ''xam'';
  inputs.src-xam-1_3_0.flake = false;
  inputs.src-xam-1_3_0.type = "github";
  inputs.src-xam-1_3_0.owner = "j-a-s-d";
  inputs.src-xam-1_3_0.repo = "xam";
  inputs.src-xam-1_3_0.ref = "refs/tags/1.3.0";
  
  outputs = { self, nixpkgs, src-xam-1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xam-1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xam-1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}