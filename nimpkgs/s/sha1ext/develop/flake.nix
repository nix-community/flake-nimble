{
  description = ''std / sha1 extension'';
  inputs.src-sha1ext-develop.flake = false;
  inputs.src-sha1ext-develop.type = "github";
  inputs.src-sha1ext-develop.owner = "CORDEA";
  inputs.src-sha1ext-develop.repo = "sha1ext";
  inputs.src-sha1ext-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-sha1ext-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sha1ext-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}