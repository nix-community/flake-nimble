{
  description = ''macro-based HTML templating engine'';
  inputs.src-emerald-v0_2_0.flake = false;
  inputs.src-emerald-v0_2_0.type = "github";
  inputs.src-emerald-v0_2_0.owner = "flyx";
  inputs.src-emerald-v0_2_0.repo = "emerald";
  inputs.src-emerald-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-emerald-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emerald-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-emerald-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}