{
  description = ''USA Code.Gov MultiSync API Client for Nim'';
  inputs.src-usagov-master.flake = false;
  inputs.src-usagov-master.type = "github";
  inputs.src-usagov-master.owner = "juancarlospaco";
  inputs.src-usagov-master.repo = "nim-usagov";
  inputs.src-usagov-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-usagov-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usagov-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-usagov-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}