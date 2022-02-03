{
  description = ''std / sha1 extension'';
  inputs.src-sha1ext-master.flake = false;
  inputs.src-sha1ext-master.type = "github";
  inputs.src-sha1ext-master.owner = "CORDEA";
  inputs.src-sha1ext-master.repo = "sha1ext";
  inputs.src-sha1ext-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sha1ext-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sha1ext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}