{
  description = ''Redis-backed sessions for jester'';
  inputs.src-redissessions-master.flake = false;
  inputs.src-redissessions-master.type = "github";
  inputs.src-redissessions-master.owner = "ithkuil";
  inputs.src-redissessions-master.repo = "redissessions";
  inputs.src-redissessions-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redissessions-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redissessions-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redissessions-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}