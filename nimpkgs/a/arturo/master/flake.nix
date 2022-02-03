{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-master.flake = false;
  inputs.src-arturo-master.type = "github";
  inputs.src-arturo-master.owner = "arturo-lang";
  inputs.src-arturo-master.repo = "arturo";
  inputs.src-arturo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-arturo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}