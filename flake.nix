{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }@attrs: {
    modules = import ./module.nix;
  };
}
