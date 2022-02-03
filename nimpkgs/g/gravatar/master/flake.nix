{
  description = ''Gravatar API wrapper'';
  inputs.src-gravatar-master.flake = false;
  inputs.src-gravatar-master.type = "github";
  inputs.src-gravatar-master.owner = "achesak";
  inputs.src-gravatar-master.repo = "nim-gravatar";
  inputs.src-gravatar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gravatar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gravatar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gravatar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}