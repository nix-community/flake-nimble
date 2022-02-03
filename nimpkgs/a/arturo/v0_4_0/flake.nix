{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_4_0.flake = false;
  inputs.src-arturo-v0_4_0.type = "github";
  inputs.src-arturo-v0_4_0.owner = "arturo-lang";
  inputs.src-arturo-v0_4_0.repo = "arturo";
  inputs.src-arturo-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-arturo-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}