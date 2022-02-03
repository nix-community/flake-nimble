{
  description = ''HTTP Cookies for Nim.'';
  inputs.src-cookiejar-master.flake = false;
  inputs.src-cookiejar-master.type = "github";
  inputs.src-cookiejar-master.owner = "planety";
  inputs.src-cookiejar-master.repo = "cookiejar";
  inputs.src-cookiejar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cookiejar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cookiejar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cookiejar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}