{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
  inputs.src-foreach-master.flake = false;
  inputs.src-foreach-master.type = "github";
  inputs.src-foreach-master.owner = "disruptek";
  inputs.src-foreach-master.repo = "foreach";
  inputs.src-foreach-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-foreach-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foreach-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-foreach-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}