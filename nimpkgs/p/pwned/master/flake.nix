{
  description = ''A client for the Pwned passwords API.'';
  inputs.src-pwned-master.flake = false;
  inputs.src-pwned-master.type = "github";
  inputs.src-pwned-master.owner = "dom96";
  inputs.src-pwned-master.repo = "pwned";
  inputs.src-pwned-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pwned-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pwned-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pwned-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}