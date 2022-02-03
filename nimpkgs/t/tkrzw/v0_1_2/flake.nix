{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';
  inputs.src-tkrzw-v0_1_2.flake = false;
  inputs.src-tkrzw-v0_1_2.type = "other";
  inputs.src-tkrzw-v0_1_2.owner = "~ehmry";
  inputs.src-tkrzw-v0_1_2.repo = "nim-tkrzw";
  inputs.src-tkrzw-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-tkrzw-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tkrzw-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tkrzw-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}