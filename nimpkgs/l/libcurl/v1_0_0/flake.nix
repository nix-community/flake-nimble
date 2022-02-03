{
  description = ''Nim wrapper for libcurl.'';
  inputs.src-libcurl-v1_0_0.flake = false;
  inputs.src-libcurl-v1_0_0.type = "github";
  inputs.src-libcurl-v1_0_0.owner = "Araq";
  inputs.src-libcurl-v1_0_0.repo = "libcurl";
  inputs.src-libcurl-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-libcurl-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libcurl-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libcurl-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}