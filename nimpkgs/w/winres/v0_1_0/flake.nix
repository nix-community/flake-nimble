{
  description = ''Windows resource file generator'';
  inputs.src-winres-v0_1_0.flake = false;
  inputs.src-winres-v0_1_0.type = "github";
  inputs.src-winres-v0_1_0.owner = "codehz";
  inputs.src-winres-v0_1_0.repo = "nim-winres";
  inputs.src-winres-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-winres-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winres-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winres-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}