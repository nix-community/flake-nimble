{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
  inputs.src-neoid-v0_2_0.flake = false;
  inputs.src-neoid-v0_2_0.type = "github";
  inputs.src-neoid-v0_2_0.owner = "theAkito";
  inputs.src-neoid-v0_2_0.repo = "nim-neoid";
  inputs.src-neoid-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-neoid-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neoid-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neoid-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}