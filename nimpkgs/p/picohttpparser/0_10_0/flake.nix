{
  description = ''Bindings for picohttpparser.'';
  inputs.src-picohttpparser-0_10_0.flake = false;
  inputs.src-picohttpparser-0_10_0.type = "github";
  inputs.src-picohttpparser-0_10_0.owner = "philip-wernersbach";
  inputs.src-picohttpparser-0_10_0.repo = "nim-picohttpparser";
  inputs.src-picohttpparser-0_10_0.ref = "refs/tags/0.10.0";
  
  outputs = { self, nixpkgs, src-picohttpparser-0_10_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-picohttpparser-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-picohttpparser-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}