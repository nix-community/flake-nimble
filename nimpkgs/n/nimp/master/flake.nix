{
  description = ''A package manager that delegates to package authors'';
  inputs.src-nimp-master.flake = false;
  inputs.src-nimp-master.type = "github";
  inputs.src-nimp-master.owner = "c-blake";
  inputs.src-nimp-master.repo = "nimp";
  inputs.src-nimp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}