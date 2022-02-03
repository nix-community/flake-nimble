{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_9_78.flake = false;
  inputs.src-arturo-v0_9_78.type = "github";
  inputs.src-arturo-v0_9_78.owner = "arturo-lang";
  inputs.src-arturo-v0_9_78.repo = "arturo";
  inputs.src-arturo-v0_9_78.ref = "refs/tags/v0.9.78";
  
  outputs = { self, nixpkgs, src-arturo-v0_9_78, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_78;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_9_78"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}