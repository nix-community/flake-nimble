{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';
  inputs.src-highlight-master.flake = false;
  inputs.src-highlight-master.type = "github";
  inputs.src-highlight-master.owner = "RaimundHuebel";
  inputs.src-highlight-master.repo = "nimhighlight";
  inputs.src-highlight-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-highlight-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-highlight-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-highlight-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}