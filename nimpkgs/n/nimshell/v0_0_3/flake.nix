{
  description = ''Library for shell scripting in nim'';
  inputs.src-nimshell-v0_0_3.flake = false;
  inputs.src-nimshell-v0_0_3.type = "github";
  inputs.src-nimshell-v0_0_3.owner = "vegansk";
  inputs.src-nimshell-v0_0_3.repo = "nimshell";
  inputs.src-nimshell-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-nimshell-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimshell-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimshell-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}