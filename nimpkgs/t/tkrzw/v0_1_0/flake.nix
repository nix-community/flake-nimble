{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';
  inputs.src-tkrzw-v0_1_0.flake = false;
  inputs.src-tkrzw-v0_1_0.type = "other";
  inputs.src-tkrzw-v0_1_0.owner = "~ehmry";
  inputs.src-tkrzw-v0_1_0.repo = "nim-tkrzw";
  inputs.src-tkrzw-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-tkrzw-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tkrzw-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tkrzw-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}