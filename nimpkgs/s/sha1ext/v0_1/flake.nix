{
  description = ''std / sha1 extension'';
  inputs.src-sha1ext-v0_1.flake = false;
  inputs.src-sha1ext-v0_1.type = "github";
  inputs.src-sha1ext-v0_1.owner = "CORDEA";
  inputs.src-sha1ext-v0_1.repo = "sha1ext";
  inputs.src-sha1ext-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-sha1ext-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sha1ext-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}