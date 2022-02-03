{
  description = ''Cross platform system API for os and net.'';
  inputs.src-xio-master.flake = false;
  inputs.src-xio-master.type = "github";
  inputs.src-xio-master.owner = "xflywind";
  inputs.src-xio-master.repo = "async";
  inputs.src-xio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}