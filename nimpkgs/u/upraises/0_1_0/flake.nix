{
  description = ''exception tracking for older versions of nim'';
  inputs.src-upraises-0_1_0.flake = false;
  inputs.src-upraises-0_1_0.type = "github";
  inputs.src-upraises-0_1_0.owner = "markspanbroek";
  inputs.src-upraises-0_1_0.repo = "upraises";
  inputs.src-upraises-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-upraises-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-upraises-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-upraises-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}