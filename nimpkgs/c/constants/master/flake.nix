{
  description = ''Mathematical numerical named static constants useful for different disciplines'';
  inputs.src-constants-master.flake = false;
  inputs.src-constants-master.type = "github";
  inputs.src-constants-master.owner = "juancarlospaco";
  inputs.src-constants-master.repo = "nim-constants";
  inputs.src-constants-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-constants-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-constants-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-constants-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}